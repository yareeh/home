#!/usr/bin/env python3
import sys
import json
import urllib.request
import urllib.parse
import urllib.error
from urllib.error import URLError

def get_latest_version(artifact_id):
    # Split into group and artifact if full coordinate is provided
    if ":" in artifact_id:
        group_id, artifact_id = artifact_id.split(":")
    elif "." in artifact_id:
        group_id = ".".join(artifact_id.split(".")[:-1])
        artifact_id = artifact_id.split(".")[-1]
    else:
        print("Error: Invalid format. Use either 'group.id.artifact' or 'group:artifact'")
        sys.exit(1)

    # URL encode the query parameters
    query = urllib.parse.urlencode({
        'q': f'g:"{group_id}" AND a:"{artifact_id}"',
        'rows': '1',
        'wt': 'json'
    })

    url = f"https://search.maven.org/solrsearch/select?{query}"

    try:
        # Add User-Agent to avoid potential blocking
        headers = {
            'User-Agent': 'Mozilla/5.0 (compatible; DependencyVersionChecker/1.0)'
        }
        request = urllib.request.Request(url, headers=headers)

        with urllib.request.urlopen(request, timeout=10) as response:
            data = json.loads(response.read().decode())

            if data['response']['numFound'] == 0:
                print(f"No artifact found for {group_id}:{artifact_id}")
                return None

            latest_version = data['response']['docs'][0]['latestVersion']
            return latest_version

    except URLError as e:
        print(f"Error fetching version: {e}")
        return None
    except json.JSONDecodeError:
        print("Error parsing response from Maven Central")
        return None
    except Exception as e:
        print(f"Unexpected error: {e}")
        return None

def main():
    if len(sys.argv) != 2:
        print("Usage: depversion <artifact-id>")
        print("Example: depversion com.google.dagger.hilt.android")
        print("         depversion com.google.dagger:hilt-android")
        sys.exit(1)

    latest = get_latest_version(sys.argv[1])
    if latest:
        print(latest)

if __name__ == "__main__":
    main()

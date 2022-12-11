import argparse
import re


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True)
    parser.add_argument("--group", type=int, required=True)
    parser.add_argument("--regex", required=True)
    parser.add_argument("--ignore", required=False)

    args = parser.parse_args()
    input = args.input
    group = args.group
    regex = args.regex
    ignore = args.ignore

    result = re.match(ignore, input)
    if result is not None:
        print(f"::set-output name=ignore-validation::true")
        return
    result = re.match(regex, input)
    if result is None:
        raise Exception(f"Failed extracting issue key from string: {input}")
    issue_key = result.group(group)
    print(f"::set-output name=issue-key::{issue_key}")


if __name__ == "__main__":
    main()

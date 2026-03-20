#!/usr/bin/env python3
"""Transform raw data into Senzing JSON lines format."""

import json
import os
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RAW_DIR = os.path.join(SCRIPT_DIR, "data", "raw")
MAPPED_DIR = os.path.join(SCRIPT_DIR, "data", "mapped")

DATA_SOURCE = "TODO_SOURCE_NAME"


def transform():
    """Read raw data and write Senzing-mapped JSONL."""
    os.makedirs(MAPPED_DIR, exist_ok=True)

    output_path = os.path.join(MAPPED_DIR, f"{DATA_SOURCE}.jsonl")

    # TODO: Replace with actual transformation logic.
    # Each output record must include DATA_SOURCE and RECORD_ID.
    #
    # Example:
    #   record = {
    #       "DATA_SOURCE": DATA_SOURCE,
    #       "RECORD_ID": row_id,
    #       "NAME_FULL": name,
    #       "ADDR_FULL": address,
    #   }

    print("TODO: Implement transformation for this data source.")
    sys.exit(1)

    record_count = 0
    with open(output_path, "w") as out:
        pass  # TODO: write records as JSON lines
        # json.dump(record, out)
        # out.write("\n")
        # record_count += 1

    print(f"Wrote {record_count} records to {output_path}")


if __name__ == "__main__":
    transform()

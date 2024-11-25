This is a Bash script you can use on your Unraid server to check the array for Apple temporary files (commonly named `._*` and `.DS_Store`) and delete them. Save the script to a file (e.g., `clean_apple_temp_files.sh`) and run it from your terminal.


### Steps to Use the Script

1. **Save the Script**:
   Save the script as `clean_apple_temp_files.sh` in a location accessible from your Unraid server.

2. **Make the Script Executable**:
   Run the following command to make the script executable:
   ```bash
   chmod +x clean_apple_temp_files.sh
   ```

3. **Run the Script**:
   Execute the script with:
   ```bash
   ./clean_apple_temp_files.sh
   ```

4. **Schedule via Cron (Optional)**:
   To run this script automatically at regular intervals, you can add it to your Unraid server's `cron` jobs:
   ```bash
   crontab -e
   ```
   Add the following line to run the script daily (adjust the schedule as needed):
   ```bash
   0 2 * * * /path/to/clean_apple_temp_files.sh
   ```

### What It Does:
- Scans the array directories (`/mnt/disk*` and `/mnt/user`) for Apple temporary files (`._*` and `.DS_Store`).
- Deletes any matches while providing a verbose output for logging purposes.

**Note**: This script only deletes these specific temporary files. Ensure you test it first to avoid unintended file deletion.

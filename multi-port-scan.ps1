<# ==========================================
 # Multi-Port Scan
 # ------------------------------------------
 # Test-NetConnection is a very useful little helper to check the connection to a remote system. Besides ping and name resolution you can also test for a specific TCP port. 
 # It gets a bit awkward when more than one port should be tested...
 #
 # 1. can you put the check in a one line command? 
 # 2. there is too much overhead in our output - can you please omit warnings and try to make it a single line, one for each port check result?
 # 
 # ========================================== #>
@(22, 80, 139, 443) | ForEach-Object { nc -vz 192.168.1.1 $_ }
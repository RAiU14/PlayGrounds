# Note: This will create a schedule in Windows Task Scheduler. 
# Have not tested the scheduled run yet. However the task will be created and can be viewed on the Task Scheduler. 
$TaskName = "MyGitAutomationTask"
$TaskDescription = "Run Git Automation Script"
$ScriptPath = "" # Path to the Git Automation script
$TriggerTime = "21:00:00" 

try {
    $TaskExists = Get-ScheduledTask | Where-Object {$_.TaskName -eq $TaskName}

    # Check if the task exists. This will help not create task if it already exists.
    # Do not know if duplicate task will be created. 
    if ($TaskExists) 
    {
        Write-Output "Task '$TaskName' already exists in Task Scheduler."
    } 
    else 
    {
        Write-Output "Creating Task '$TaskName' in Task Scheduler."

        $Trigger = New-ScheduledTaskTrigger -Daily -At $TriggerTime

        $Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"$ScriptPath`""

        $Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable -IdleDuration (New-TimeSpan -Minutes 1) -IdleWaitTimeout (New-TimeSpan -Minutes 5) -RunOnlyIfIdle -RestartCount 3 -RestartInterval (New-TimeSpan -Minutes 10)

        Register-ScheduledTask -TaskName $TaskName -Trigger $Trigger -Action $Action -Description $TaskDescription -Settings $Settings

        Write-Output "Task '$TaskName' successfully created and scheduled."
    }
} 
catch 
{
    Write-Error "Failed to create or register the task. Error: $($_.Exception.Message)"
}

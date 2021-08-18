# Backup and Recovery

It is imperative to have a backup of the database in case the original is corrupted or lost because of any reason. Using this backup, the database can be recovered as it was before the failure.

Database backup basically means that a duplicate of the database information and data is created and stored in backup server just to be on the safe side. Transaction logs are also stored in the backup along with the database data because without them, the data would be useless.

## Reasons of Failure in a Database
There can be multiple reasons of failure in a database because of which a database backup and recovery plan is required. Some of these reasons are:

**User Error:**   Normally, user error is the biggest reason of data destruction or corruption in a database. To rectify the error, the database needs to be restored to the point in time before the error occurred.

**Hardware Failure:**  This can also lead to loss of data in a database. The database is stored on multiple hard drives across various locations. These hard drives may sometimes malfunction leading to database corruption. So, it is important to periodically change them.

**Catastrophic Event:**  A catastrophic event can be a natural calamity like a flood or earthquake or deliberate sabotage such as hacking of the database. Either way, the database data may be corrupted and backup may be required.

## Methods of Backup

The different methods of backup in a database are:

**Full Backup:**  This method takes a lot of time as the full copy of the database is made including the data and the transaction records.
Transaction Log -  Only the transaction logs are saved as the backup in this method. To keep the backup file as small as possible, the previous transaction log details are deleted once a new backup record is made.

**Differential Backup:** This is similar to full backup in that it stores both the data and the transaction records. However only that information is saved in the backup that has changed since the last full backup. Because of this, differential backup leads to smaller files.

**Database Recovery**

There are two methods that are primarily used for database recovery. These are:

**Log based recovery:**  In log based recovery, logs of all database transactions are stored in a secure area so that in case of a system failure, the database can recover the data. All log information, such as the time of the transaction, its data etc. should be stored before the transaction is executed.

**Shadow paging:**  In shadow paging, after the transaction is completed its data is automatically stored for safekeeping. So, if the system crashes in the middle of a transaction, changes made by it will not be reflected in the database.

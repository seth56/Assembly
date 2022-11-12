# File Permissions Reference

Permissions are written as 0x0000 (Special, Owner, Group, Other)

In order from most significant bit to least significant bit:
  - Special
  - Owner
  - Group 
  - Other  

**Example:**
  - 0x0700 gives the owner all permissions and everyone else none

## Permission Values

| Value | Read | Write | Execute |
| - | - | - | - |
| 0 | No | No | No |
| 1 | No | No | **Yes** |
| 2 | No | **Yes** | No |
| 3 | No | **Yes** | **Yes** |
| 4 | **Yes** | No | No |
| 5 | **Yes** | No | **Yes** |
| 6 | **Yes** | **Yes** | No |
| 7 | **Yes** | No | **Yes** |

# MassAutoReply
A quick tool to simplify the process of putting individual Out Of Office responses for multiple mailboxes, on the ExchangeOnline platform. 

## Getting The Mailboxes
This tool uses the standard format for exports taken direct from the Exchange admin center. 
A good quick guide for getting this info can be found here: https://www.codetwo.com/kb/export-exchange-mailboxes-list/
Be sure to only take the 'Display Name' and 'Email Address' fields. Alternatively, use the attached template and manually key in your mailboxes. 

## Formatting the OOO Message
Be sure not to include any escaping characters e.g. ' or " as the input is not sanitized before it is passed to the Exchange command. 

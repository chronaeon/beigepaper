# Pseudocode Dump

Pseudocodes that express Ethereum's working parts operationally as objects.


## Transaction Receipt
```
class transactions_receipt
	group=tuple
	size=4
	members={
		transaction(poststate) 
		total_gas(used)
		logs_set
			log_entry(n)
			log_entry(n+1)
		logs(bloom_filter)
		}
```

### Post Transaction State
 
```
class receipt_state
	group=mono
	size=1
	members={
		RLP_trie(root)
		}
```

### Logs Set
```
class logs_set
	group=set
	size=n+1
	members={
		log_entry(1)
		log_entry(2)
		log_entry(3)
		log_entry(n)
		forall(logs_in_set)
		}
```

### Log Entry
```
class log_entry
	group=tuple
	size=3
	members={
		logger(address)
		log_topics(series)
		uint(bytes_data)
		}
```

### Exceptional Halting
```
if ( empty_gas or invalid_instruction or undersize_stack or oversize_stack or bad_jumpdest) 
	then signal exceptional_halt
else exec instruction.x 
	then signal controlled_halt

```

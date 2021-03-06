#!/bin/bash

# the first command-line parameter is in $1, the second in $2, etc.

case "$1" in

    name) echo "AaronDollar(TM)"
	  # additional parameters provided: (none)
	  ;;

    genesis) python cmoney genesis block_0.txt
	     # additional parameters provided: (none)
             ;;

    generate) python cmoney generate $2
	      # additional parameters provided: the wallet file name
              ;;

    address) python cmoney address $2
	     # additional parameters provided: the file name of the wallet
	     ;;

    fund) python cmoney fund $2 $3 $4
	  # additional parameters provided: destination wallet
	  # address, the amount, and the transaction file name
          ;;

    transfer) python cmoney transfer $2 $3 $4 $5
	      # additional parameters provided: source wallet file
	      # name, destination address, amount, and the transaction
	      # file name
	      ;;

    balance) python cmoney balance $2
	     # additional parameters provided: wallet address
	     ;;

    verify) python cmoney verify $2 $3
	    # additional parameters provided: wallet file name,
	    # transaction file name
	    ;;

    mine) python cmoney mine $2
		 # additional parameters provided: difficulty
		 ;;
    
    validate) python cmoney validate
	      # additional parameters provided: (none)
	      ;;

    *) echo Unknown function: $1
       ;;

esac

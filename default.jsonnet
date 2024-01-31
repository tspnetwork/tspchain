{
  'tspchain_188888-1': {
    cmd: 'tspchaind',
    'start-flags': '--trace',
    config: {
      mempool: {
        version: 'v1',
      },
    },
    'app-config': {
      'minimum-gas-prices': '0utsp',
      'index-events': ['ethereum_tx.ethereumTxHash'],
      'iavl-lazy-loading': true,
      'json-rpc': {
        address: '127.0.0.1:{EVMRPC_PORT}',
        'ws-address': '127.0.0.1:{EVMRPC_PORT_WS}',
        api: 'eth,net,web3,debug',
        'feehistory-cap': 100,
        'block-range-cap': 10000,
        'logs-cap': 10000,
      },
    },
    validators: [{
      coins: '10000000000000000000000utsp',
      staked: '1000000000000000000utsp',
      gas_prices: '10000000000000utsp',
      client_config: {
        'broadcast-mode': 'sync',
      },
    }, {
      coins: '10000000000000000000000utsp',
      staked: '1000000000000000000utsp',
      gas_prices: '10000000000000utsp',
      client_config: {
        'broadcast-mode': 'sync',
      },
    }],
    accounts: [{
      name: 'community',
      coins: '10000000000000000000000utsp',
    }, {
      name: 'signer1',
      coins: '20000000000000000000000utsp',
    }, {
      name: 'signer2',
      coins: '30000000000000000000000utsp',
    }],
    genesis: {
      consensus_params: {
        block: {
          max_bytes: '1048576',
          max_gas: '81500000',
        },
      },
      app_state: {
        staking: {
          params: {
            bond_denom: 'utsp',
          },
        },
        evm: {
          params: {
            evm_denom: 'utsp',
          },
        },
        gov: {
          params: {
            min_deposit: [
              {
                denom: 'utsp',
                amount: '1000000000000000000',
              },
            ],
          },
        },
        transfer: {
          params: {
            receive_enabled: true,
            send_enabled: true,
          },
        },
        feemarket: {
          params: {
            no_base_fee: false,
            base_fee_change_denominator: 300,
            elasticity_multiplier: 4,
            base_fee: '10000000000000',
            min_gas_price: '1000000000000',
            min_gas_multiplier: '0.5',
          },
        },
      },
    },
  },
}

package tspchain_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	keepertest "github.com/tspnetwork/tspchain/testutil/keeper"
	"github.com/tspnetwork/tspchain/testutil/nullify"
	"github.com/tspnetwork/tspchain/x/tspchain"
	"github.com/tspnetwork/tspchain/x/tspchain/types"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{
		Params: types.DefaultParams(),

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.TspchainKeeper(t)
	tspchain.InitGenesis(ctx, *k, genesisState)
	got := tspchain.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	// this line is used by starport scaffolding # genesis/test/assert
}

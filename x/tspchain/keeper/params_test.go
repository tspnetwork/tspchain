package keeper_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	testkeeper "github.com/tspnetwork/tspchain/testutil/keeper"
	"github.com/tspnetwork/tspchain/x/tspchain/types"
)

func TestGetParams(t *testing.T) {
	k, ctx := testkeeper.TspchainKeeper(t)
	params := types.DefaultParams()

	k.SetParams(ctx, params)

	require.EqualValues(t, params, k.GetParams(ctx))
}

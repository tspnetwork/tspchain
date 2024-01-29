package keeper

import (
	"github.com/tspnetwork/tspchain/x/tspchain/types"
)

var _ types.QueryServer = Keeper{}

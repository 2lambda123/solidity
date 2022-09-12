/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
#include <libsolidity/lsp/HandlerBase.h>
#include <libsolidity/lsp/ReferenceCollector.h>

#include <vector>

namespace solidity::lsp
{

/**
 * Implements JSON RPC for `textDocument/documentHighlight`.
 */
class SemanticHighlight: public HandlerBase
{
public:
	explicit SemanticHighlight(LanguageServer& _server): HandlerBase(_server) {}

	void operator()(MessageID _id, Json::Value const& _args);

private:
	std::vector<Reference> semanticHighlight(frontend::ASTNode const* _sourceNode, int _sourceOffset, std::string const& _sourceUnitName);
};

}

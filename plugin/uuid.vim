" Check if python is available
if !has('python3')
	echo "Error: this plugin requires python support in Vim"
	finish
endif

function! UUIDGenerate()
python3 << EOF
import uuid

vim.command(':normal i' + str(uuid.uuid4()))
EOF
endfunction

command! -nargs=0 GenerateUUID call UUIDGenerate()


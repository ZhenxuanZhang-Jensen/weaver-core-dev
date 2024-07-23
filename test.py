import argparse
import ast

parser = argparse.ArgumentParser()

parser.add_argument('-o', '--network-option', nargs=2, action='append', default=[],
                    help='options to pass to the model class constructor, e.g., `--network-option ft_layer_params "[(1024,0)]"`')

args = parser.parse_args()

# 使用列表表达式来解析参数
network_options = {key: ast.literal_eval(value) for key, value in args.network_option}

print(network_options)

for i,j in network_options['ft_layer_params']:
    print(i,j)
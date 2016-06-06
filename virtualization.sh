#!/bin/bash

yum groups mark convert virtualization
yum groups mark install virtualization
yum install -y @virt*

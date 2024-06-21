#!/usr/bin/env python3
"""
Use ansible-lint to lint ansible files
"""

import logging

from megalinter import Linter #, config, flavor_factory, utils


class ansiblelintLinter(Linter):
    # Activate SemGrep only if we have custom rulesets defined
    def manage_activation(self, params):
        logging.info(
            "[ansiblelintLinter] Deactivated because im testing"
        )
        self.is_active = False

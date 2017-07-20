#!/bin/bash

. /usr/share/beakerlib/beakerlib.sh || exit 1

export SYSTEMD_PAGER=""
PACKAGE=systemd

rlJournalStart

rlPhaseStartSetup
rlAssertRpm $PACKAGE
rlPhaseEnd

rlPhaseStartTest
rlRun "systemctl --all list-units"
rlPhaseEnd

rlJournalPrintText
rlJournalEnd

package blocky_momot;

import java.util.concurrent.ThreadLocalRandom;

import at.ac.tuwien.big.momot.problem.unit.parameter.IParameterValue;
import blocky.AtomicStatementKind;

/**
 * Supplies a random AtomicStatementKind literal name (TURN_LEFT / TURN_RIGHT / MOVE_FORWARD).
 *
 * We use String literals because Henshin casts enum-typed attributes from strings
 * (via EFactory#createFromString). Passing the Java enum can be stored as its
 * integer value, which then loads as a different literal (MOVE_FORWARD=2 vs TURN_RIGHT=1).
 */
public final class RandomAtomicKindLiteralValue implements IParameterValue<String> {
	@Override
	public String getInitialValue() {
		return nextValue();
	}

	@Override
	public String nextValue() {
		int v = ThreadLocalRandom.current().nextInt(0, 3);
		if (v == 0) return AtomicStatementKind.TURN_LEFT.getLiteral();
		if (v == 1) return AtomicStatementKind.TURN_RIGHT.getLiteral();
		return AtomicStatementKind.MOVE_FORWARD.getLiteral();
	}
}


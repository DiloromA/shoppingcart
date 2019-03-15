/*
  |----------------------------------------------------------------------|
	| Parameter     | Required | Type    | Default | Description           |
  |----------------------------------------------------------------------|
	| table         | Yes      | string  |         | existing table name   |
	| columnName    | Yes      | string  |         | existing column name  |
	| newColumnName | No       | string  |         | new name for column   |
  |----------------------------------------------------------------------|

    EXAMPLE:
      renameColumn(table='users', columnName='password', newColumnName='');
*/
component extends="wheels.migrator.Migration" hint="rename user_id in carts to customer_id" {

	function up() {
		transaction {
			try {
				renameColumn(table='carts', columnName='user_id', newColumnName='customer_id');
			} catch (any e) {
				local.exception = e;
			}

			if (StructKeyExists(local, "exception")) {
				transaction action="rollback";
				throw(errorCode="1", detail=local.exception.detail, message=local.exception.message, type="any");
			} else {
				transaction action="commit";
			}
		}
	}

	function down() {
		transaction {
			try {
				renameColumn(table='carts', columnName='user_id', newColumnName='customer_id');
			} catch (any e) {
				local.exception = e;
			}

			if (StructKeyExists(local, "exception")) {
				transaction action="rollback";
				throw(errorCode="1", detail=local.exception.detail, message=local.exception.message, type="any");
			} else {
				transaction action="commit";
			}
		}
	}

}

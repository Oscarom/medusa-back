import db from '../config/db.js';

const ProducsModel = {}

ProducsModel.findProducts = (data, result) => {

    const sql = "SELECT * FROM productos";

    db.query(
        sql,
        [],
        (err, res) => {
            if (err) {
                console.log("error: ", err);
                result(err, null);
                return;
            }

            if (res.length) {
                console.log("Productos encontrados: ", res);
                result(null, res);
                return;
            }

            result({ kind: "not_found" }, null);
        }
    )
}

export default ProducsModel;
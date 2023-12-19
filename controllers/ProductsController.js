import ProducsModel from "../models/ProductsModel.js";

const getProducts = (req, res) => {
    ProducsModel.findProducts({}, (err, data) => {
        if (err) {
            return res.status(500).send({
                message: err.message || "Ocurrió un error al intentar autenticar al usuario.",
                data: [],
                status: false
            });
        }

        return res.status(200).send({
            message: "Productos encontrados.",
            data: data,
            status: true
        });
    });
}

export {
    getProducts
}

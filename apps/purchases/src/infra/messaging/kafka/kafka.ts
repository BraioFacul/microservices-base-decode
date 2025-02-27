import { Kafka } from "kafkajs";

if (!process.env.KAFKA_BROKER) {
  throw new Error("Kafka broker address not set!");
}

export const kafka = new Kafka({
  clientId: "purchases",
  brokers: [process.env.KAFKA_BROKER],
  ssl: false,
  retry: {
    retries: 3,
  },
});

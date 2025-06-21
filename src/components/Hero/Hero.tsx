import React, { ReactNode } from "react";
import clsx from "clsx";
import Link from "@docusaurus/Link";
import styles from "./styles.module.css";
import useBaseUrl from "@docusaurus/useBaseUrl";

export default function HomepageHero(): ReactNode {
  return (
    <header className={clsx("hero", styles.heroBanner)}>
      <div className="container text--center">
        <img
          className={styles.heroImage}
          src={useBaseUrl("/img/logo.png")}
          alt="Scroll with JS icon"
        />
        <h1 className={styles.heroTitle}>Student To Software Engineer</h1>
        <p className={styles.heroSubtitle}>
          A free guide for students who want to land their first software job.
          Learn how to stand out, build real skills, and launch your career in
          software.
        </p>
        <div className={styles.buttons}>
          <Link
            className="button button--primary button--lg"
            to="/docs/introduction"
          >
            Start reading →
          </Link>
          <p className={styles.freeNote}>It's completely free to read!</p>
        </div>
      </div>
    </header>
  );
}

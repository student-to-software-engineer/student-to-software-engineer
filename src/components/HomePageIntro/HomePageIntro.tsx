import React from "react";
import styles from "./HomePageIntro.module.css";
import Link from "@docusaurus/Link";

export default function HomepageIntro() {
  return (
    <section className={styles.intro}>
      <div className={styles.container}>
        <div className={styles.tag}>What is this</div>
        <h1 className={styles.title}>
          A brutally honest guide for students trying to land their first job in
          tech.
        </h1>
        <p>
          <strong>Student to Software Engineer</strong> is a handbook for
          university students and new grads trying to break into an industry
          that’s never been more competitive—or more confusing.
        </p>
        <p>
          It explains why getting hired is so hard, what school won’t teach you,
          and how to actually become employable—without burning out or wasting
          time.
        </p>
        <p>
          No vague advice. No “just learn to code.” Just clear strategies from
          someone who's lived it, written about it, and helped hundreds of
          students do it too.
        </p>
        <p>
          Not sure where to start?{" "}
          <Link to="/docs/introduction">Browse the chapters</Link> or dive right
          into <Link to="/docs/introduction">Chapter 1</Link>.
        </p>
      </div>
    </section>
  );
}

import React, { ReactNode, useEffect } from "react";
import { useLocation } from "@docusaurus/router";

declare global {
  interface Window {
    Shynet?: {
      newPageLoad: () => void;
    };
  }
}

type RootProps = {
  children: ReactNode;
};

export default function Root({ children }: RootProps) {
  const location = useLocation();

  useEffect(() => {
    if (
      typeof window !== "undefined" &&
      window?.Shynet &&
      window?.Shynet?.newPageLoad
    ) {
      window?.Shynet?.newPageLoad();
    }
  }, [location.pathname]);

  return <>{children}</>;
}

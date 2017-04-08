package org.dado.aj;

/**
 * Created by dado on 01.04.17.
 */
public aspect CallAspect {
    pointcut callPC() : call(* org.dado.aj.MainActivity.onCreate(..));

    before() : callPC()
            {
                System.out.println("ASPECT ----------------");
                System.out.println("JP " +thisJoinPoint.getStaticPart().getSignature());
            }
}

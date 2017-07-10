.class final Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;
.super Lorg/joda/time/chrono/GJChronology$CutoverField;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImpreciseCutoverField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f53a32d270c62f9L


# instance fields
.field final synthetic this$0:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V
    .registers 16

    .prologue
    .line 921
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 922
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V
    .registers 16

    .prologue
    .line 932
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 933
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V
    .registers 15

    .prologue
    .line 943
    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    move v6, p7

    .line 944
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V

    .line 945
    if-nez p4, :cond_14

    .line 946
    new-instance p4, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iDurationField:Lorg/joda/time/DurationField;

    invoke-direct {p4, v0, p0}, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;)V

    .line 948
    :cond_14
    iput-object p4, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iDurationField:Lorg/joda/time/DurationField;

    .line 949
    return-void
.end method


# virtual methods
.method public add(JI)J
    .registers 11

    .prologue
    .line 952
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_24

    .line 953
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 954
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 956
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    # getter for: Lorg/joda/time/chrono/GJChronology;->iGapDuration:J
    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_23

    .line 957
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 969
    :cond_23
    :goto_23
    return-wide v0

    .line 961
    :cond_24
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 962
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_23

    .line 964
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    # getter for: Lorg/joda/time/chrono/GJChronology;->iGapDuration:J
    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_23

    .line 965
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->julianToGregorian(J)J

    move-result-wide v0

    goto :goto_23
.end method

.method public add(JJ)J
    .registers 12

    .prologue
    .line 973
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_24

    .line 974
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    .line 975
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 977
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    # getter for: Lorg/joda/time/chrono/GJChronology;->iGapDuration:J
    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_23

    .line 978
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 990
    :cond_23
    :goto_23
    return-wide v0

    .line 982
    :cond_24
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    .line 983
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_23

    .line 985
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    # getter for: Lorg/joda/time/chrono/GJChronology;->iGapDuration:J
    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_23

    .line 986
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->julianToGregorian(J)J

    move-result-wide v0

    goto :goto_23
.end method

.method public getDifference(JJ)I
    .registers 8

    .prologue
    .line 994
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1e

    .line 995
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_13

    .line 996
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    .line 1009
    :goto_12
    return v0

    .line 1000
    :cond_13
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 1001
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    goto :goto_12

    .line 1003
    :cond_1e
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2b

    .line 1004
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    goto :goto_12

    .line 1008
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->julianToGregorian(J)J

    move-result-wide v0

    .line 1009
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    goto :goto_12
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 8

    .prologue
    .line 1014
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1e

    .line 1015
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_13

    .line 1016
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    .line 1029
    :goto_12
    return-wide v0

    .line 1020
    :cond_13
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 1021
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_12

    .line 1023
    :cond_1e
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2b

    .line 1024
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_12

    .line 1028
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->julianToGregorian(J)J

    move-result-wide v0

    .line 1029
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_12
.end method

.method public getMaximumValue(J)I
    .registers 6

    .prologue
    .line 1052
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 1053
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    .line 1055
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    goto :goto_c
.end method

.method public getMinimumValue(J)I
    .registers 6

    .prologue
    .line 1044
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 1045
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    .line 1047
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    goto :goto_c
.end method

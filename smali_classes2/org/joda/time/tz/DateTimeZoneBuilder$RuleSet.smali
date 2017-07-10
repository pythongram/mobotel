.class final Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuleSet"
.end annotation


# static fields
.field private static final YEAR_LIMIT:I


# instance fields
.field private iInitialNameKey:Ljava/lang/String;

.field private iInitialSaveMillis:I

.field private iRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private iStandardOffset:I

.field private iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

.field private iUpperYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 948
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 949
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    .line 950
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    .line 965
    const v0, 0x7fffffff

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 966
    return-void
.end method

.method constructor <init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V
    .registers 4

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    .line 974
    iget-object v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    .line 975
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    .line 976
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 977
    iget-object v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 978
    return-void
.end method


# virtual methods
.method public addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V
    .registers 3

    .prologue
    .line 994
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 995
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_d
    return-void
.end method

.method public buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .registers 6

    .prologue
    const v3, 0x7fffffff

    .line 1141
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 1142
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1143
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1144
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    if-ne v2, v3, :cond_37

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    if-ne v2, v3, :cond_37

    .line 1154
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget-object v0, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v1, v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    move-object v0, v2

    .line 1158
    :goto_36
    return-object v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .registers 12

    .prologue
    .line 1011
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1013
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    add-int v5, v0, v2

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    .line 1067
    :goto_14
    return-object v1

    .line 1018
    :cond_15
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1024
    const-wide/high16 v2, -0x8000000000000000L

    .line 1025
    const/4 v1, 0x0

    .line 1026
    const/4 v0, 0x0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 1029
    :goto_23
    invoke-virtual {p0, v2, v3, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 1030
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    .line 1032
    cmp-long v0, v2, p1

    if-nez v0, :cond_39

    .line 1033
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v1, p1, p2, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    .line 1066
    :cond_36
    :goto_36
    iput-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    goto :goto_14

    .line 1037
    :cond_39
    cmp-long v0, v2, p1

    if-lez v0, :cond_6d

    .line 1038
    if-nez v1, :cond_5c

    .line 1042
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1043
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result v3

    if-nez v3, :cond_43

    .line 1044
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {v1, p1, p2, v0, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    .line 1049
    :cond_5c
    if-nez v1, :cond_36

    .line 1053
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    goto :goto_36

    .line 1061
    :cond_6d
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v0, p1, p2, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    .line 1063
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v1

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 1064
    goto :goto_23
.end method

.method public getStandardOffset()I
    .registers 2

    .prologue
    .line 981
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    return v0
.end method

.method public getUpperLimit(I)J
    .registers 5

    .prologue
    .line 1131
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_d

    .line 1132
    const-wide v0, 0x7fffffffffffffffL

    .line 1134
    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide v0

    goto :goto_c
.end method

.method public nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .registers 21

    .prologue
    const/4 v10, 0x0

    .line 1082
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v11

    .line 1086
    const-wide v8, 0x7fffffffffffffffL

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v10

    .line 1089
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1090
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1091
    move-object/from16 v0, p0

    iget v6, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v6, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->next(JII)J

    move-result-wide v6

    .line 1092
    cmp-long v13, v6, p1

    if-gtz v13, :cond_33

    .line 1093
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 1098
    :cond_33
    cmp-long v13, v6, v8

    if-gtz v13, :cond_75

    move-wide v14, v6

    move-object v6, v4

    move-wide v4, v14

    :goto_3a
    move-wide v8, v4

    move-object v5, v6

    .line 1103
    goto :goto_13

    .line 1105
    :cond_3d
    if-nez v5, :cond_40

    .line 1124
    :cond_3f
    :goto_3f
    return-object v10

    .line 1110
    :cond_40
    invoke-virtual {v11}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v4

    sget v6, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    if-ge v4, v6, :cond_3f

    .line 1115
    move-object/from16 v0, p0

    iget v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const v6, 0x7fffffff

    if-ge v4, v6, :cond_6b

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move/from16 v0, p3

    invoke-virtual {v4, v6, v7, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide v6

    .line 1118
    cmp-long v4, v8, v6

    if-gez v4, :cond_3f

    .line 1124
    :cond_6b
    new-instance v10, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {v10, v8, v9, v5, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    goto :goto_3f

    :cond_75
    move-object v6, v5

    move-wide v4, v8

    goto :goto_3a
.end method

.method public setFixedSavings(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 989
    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    .line 990
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    .line 991
    return-void
.end method

.method public setStandardOffset(I)V
    .registers 2

    .prologue
    .line 985
    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    .line 986
    return-void
.end method

.method public setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V
    .registers 3

    .prologue
    .line 1000
    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 1001
    iput-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 1002
    return-void
.end method

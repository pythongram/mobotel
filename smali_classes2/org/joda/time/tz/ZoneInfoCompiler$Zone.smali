.class Lorg/joda/time/tz/ZoneInfoCompiler$Zone;
.super Ljava/lang/Object;
.source "ZoneInfoCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/ZoneInfoCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Zone"
.end annotation


# instance fields
.field public final iFormat:Ljava/lang/String;

.field public final iName:Ljava/lang/String;

.field private iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

.field public final iOffsetMillis:I

.field public final iRules:Ljava/lang/String;

.field public final iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

.field public final iUntilYear:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V
    .registers 6

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    .line 754
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseTime(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    .line 755
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    .line 756
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    .line 758
    const v1, 0x7fffffff

    .line 759
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->getStartOfYear()Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    move-result-object v0

    .line 761
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 762
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 763
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 764
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-direct {v0, p2}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;-><init>(Ljava/util/StringTokenizer;)V

    .line 768
    :cond_47
    iput v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    .line 769
    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    .line 770
    return-void
.end method

.method constructor <init>(Ljava/util/StringTokenizer;)V
    .registers 3

    .prologue
    .line 749
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V

    .line 750
    return-void
.end method

.method private static addToBuilder(Lorg/joda/time/tz/ZoneInfoCompiler$Zone;Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/tz/ZoneInfoCompiler$Zone;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    :goto_0
    if-eqz p0, :cond_18

    .line 800
    iget v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;

    .line 802
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 803
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;

    .line 820
    :goto_11
    iget v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_51

    .line 826
    :cond_18
    return-void

    .line 807
    :cond_19
    :try_start_19
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseTime(Ljava/lang/String;)I

    move-result v0

    .line 808
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_11

    .line 810
    :catch_25
    move-exception v0

    .line 811
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    .line 812
    if-nez v0, :cond_4b

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rules not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_4b
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;->addRecurring(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/lang/String;)V

    goto :goto_11

    .line 824
    :cond_51
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    invoke-virtual {v0, p1, v1}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;->addCutover(Lorg/joda/time/tz/DateTimeZoneBuilder;I)V

    .line 799
    iget-object p0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    goto :goto_0
.end method


# virtual methods
.method public addToBuilder(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/tz/DateTimeZoneBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {p0, p1, p2}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->addToBuilder(Lorg/joda/time/tz/ZoneInfoCompiler$Zone;Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V

    .line 793
    return-void
.end method

.method chain(Ljava/util/StringTokenizer;)V
    .registers 4

    .prologue
    .line 773
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    if-eqz v0, :cond_a

    .line 774
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->chain(Ljava/util/StringTokenizer;)V

    .line 778
    :goto_9
    return-void

    .line 776
    :cond_a
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Zone]\nName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OffsetMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UntilYear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    if-nez v1, :cond_6e

    .line 842
    :goto_6d
    return-object v0

    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    invoke-virtual {v1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

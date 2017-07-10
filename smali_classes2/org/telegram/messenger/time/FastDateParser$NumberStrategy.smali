.class Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
.super Lorg/telegram/messenger/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;-><init>(Lorg/telegram/messenger/time/FastDateParser$1;)V

    .line 691
    iput p1, p0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;->field:I

    .line 692
    return-void
.end method


# virtual methods
.method addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "parser"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p2, "regex"    # Ljava/lang/StringBuilder;

    .prologue
    .line 708
    invoke-virtual {p1}, Lorg/telegram/messenger/time/FastDateParser;->isNextNumber()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 709
    const-string v0, "(\\p{Nd}{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/time/FastDateParser;->getFieldWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :goto_19
    const/4 v0, 0x1

    return v0

    .line 711
    :cond_1b
    const-string v0, "(\\p{Nd}++)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method isNumber()Z
    .registers 2

    .prologue
    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method modify(I)I
    .registers 2
    .param p1, "iValue"    # I

    .prologue
    .line 731
    return p1
.end method

.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/telegram/messenger/time/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 721
    iget v0, p0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;->field:I

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;->modify(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 722
    return-void
.end method

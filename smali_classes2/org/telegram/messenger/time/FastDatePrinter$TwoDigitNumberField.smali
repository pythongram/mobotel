.class Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "field"    # I

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput p1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    .line 890
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .prologue
    .line 913
    const/16 v0, 0x64

    if-ge p2, v0, :cond_15

    .line 914
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 915
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 919
    :goto_14
    return-void

    .line 917
    :cond_15
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 905
    iget v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 906
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .prologue
    .line 897
    const/4 v0, 0x2

    return v0
.end method

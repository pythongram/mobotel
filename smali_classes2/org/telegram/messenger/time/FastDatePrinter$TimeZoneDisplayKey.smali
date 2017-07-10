.class Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 6
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1244
    if-eqz p2, :cond_f

    .line 1245
    const/high16 v0, -0x80000000

    or-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    .line 1249
    :goto_c
    iput-object p4, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1250
    return-void

    .line 1247
    :cond_f
    iput p3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    goto :goto_c
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1265
    if-ne p0, p1, :cond_5

    .line 1275
    :cond_4
    :goto_4
    return v1

    .line 1268
    :cond_5
    instance-of v3, p1, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;

    if-eqz v3, :cond_28

    move-object v0, p1

    .line 1269
    check-cast v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 1270
    .local v0, "other":Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v4, v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1271
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    iget v4, v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v4, v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1273
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4

    .end local v0    # "other":Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;
    :cond_28
    move v1, v2

    .line 1275
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1257
    iget v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

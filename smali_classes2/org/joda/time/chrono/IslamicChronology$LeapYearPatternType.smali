.class public Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;
.super Ljava/lang/Object;
.source "IslamicChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/IslamicChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeapYearPatternType"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x182cef79ec9aL


# instance fields
.field final index:B

.field final pattern:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->index:B

    .line 511
    iput p2, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->pattern:I

    .line 512
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 529
    iget-byte v0, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->index:B

    packed-switch v0, :pswitch_data_12

    .line 539
    :goto_5
    return-object p0

    .line 531
    :pswitch_6
    sget-object p0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_15_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    goto :goto_5

    .line 533
    :pswitch_9
    sget-object p0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_16_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    goto :goto_5

    .line 535
    :pswitch_c
    sget-object p0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_INDIAN:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    goto :goto_5

    .line 537
    :pswitch_f
    sget-object p0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_HABASH_AL_HASIB:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    goto :goto_5

    .line 529
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method isLeapYear(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 520
    rem-int/lit8 v1, p1, 0x1e

    shl-int v1, v0, v1

    .line 521
    iget v2, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->pattern:I

    and-int/2addr v1, v2

    if-lez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

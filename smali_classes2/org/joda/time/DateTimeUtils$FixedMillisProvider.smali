.class Lorg/joda/time/DateTimeUtils$FixedMillisProvider;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"

# interfaces
.implements Lorg/joda/time/DateTimeUtils$MillisProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedMillisProvider"
.end annotation


# instance fields
.field private final iMillis:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-wide p1, p0, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;->iMillis:J

    .line 416
    return-void
.end method


# virtual methods
.method public getMillis()J
    .registers 3

    .prologue
    .line 423
    iget-wide v0, p0, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;->iMillis:J

    return-wide v0
.end method

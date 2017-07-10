.class final Lorg/joda/time/tz/CachedDateTimeZone$Info;
.super Ljava/lang/Object;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/CachedDateTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Info"
.end annotation


# instance fields
.field private iNameKey:Ljava/lang/String;

.field iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private iOffset:I

.field public final iPeriodStart:J

.field private iStandardOffset:I

.field public final iZoneRef:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;J)V
    .registers 6

    .prologue
    const/high16 v0, -0x80000000

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 186
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 189
    iput-wide p2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    .line 190
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    .line 191
    return-void
.end method


# virtual methods
.method public getNameKey(J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 194
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1d

    .line 195
    :cond_c
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 196
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    .line 198
    :cond_1a
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    .line 200
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public getOffset(J)I
    .registers 8

    .prologue
    .line 204
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 205
    :cond_c
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1c

    .line 206
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 208
    :cond_1c
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 210
    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result v0

    goto :goto_1e
.end method

.method public getStandardOffset(J)I
    .registers 8

    .prologue
    .line 214
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 215
    :cond_c
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1c

    .line 216
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 218
    :cond_1c
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 220
    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result v0

    goto :goto_1e
.end method

.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transition"
.end annotation


# instance fields
.field private final iMillis:J

.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method constructor <init>(JLjava/lang/String;II)V
    .registers 7

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 900
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 901
    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 902
    iput p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 903
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V
    .registers 6

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 892
    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getNameKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 893
    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 894
    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 895
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V
    .registers 5

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 885
    iget-object v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 886
    iget v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 887
    iget v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 888
    return-void
.end method


# virtual methods
.method public getMillis()J
    .registers 3

    .prologue
    .line 906
    iget-wide v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    return-wide v0
.end method

.method public getNameKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 910
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveMillis()I
    .registers 3

    .prologue
    .line 922
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset()I
    .registers 2

    .prologue
    .line 918
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return v0
.end method

.method public getWallOffset()I
    .registers 2

    .prologue
    .line 914
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    return v0
.end method

.method public isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 929
    if-nez p1, :cond_4

    .line 932
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-wide v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    iget-wide v4, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1c

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget-object v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1c
    const/4 v0, 0x0

    goto :goto_3
.end method

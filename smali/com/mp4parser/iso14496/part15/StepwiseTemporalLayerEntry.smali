.class public Lcom/mp4parser/iso14496/part15/StepwiseTemporalLayerEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "StepwiseTemporalLayerEntry.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsa"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 30
    if-ne p0, p1, :cond_4

    .line 33
    :cond_3
    :goto_3
    return v0

    .line 31
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string v0, "stsa"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0x25

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    return-void
.end method

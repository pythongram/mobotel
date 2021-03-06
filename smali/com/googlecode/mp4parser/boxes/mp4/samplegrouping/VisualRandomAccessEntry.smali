.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "VisualRandomAccessEntry.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rap "


# instance fields
.field private numLeadingSamples:S

.field private numLeadingSamplesKnown:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_5

    .line 90
    :cond_4
    :goto_4
    return v1

    .line 83
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;

    .line 87
    .local v0, "that":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;
    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 88
    :cond_1e
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public get()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 74
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    .local v0, "content":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    if-eqz v1, :cond_18

    const/16 v1, 0x80

    :goto_b
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 77
    return-object v0

    .line 75
    :cond_18
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getNumLeadingSamples()S
    .registers 2

    .prologue
    .line 58
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string v0, "rap "

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 96
    .local v0, "result":I
    :goto_5
    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    add-int v0, v1, v2

    .line 97
    return v0

    .line 95
    .end local v0    # "result":I
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNumLeadingSamplesKnown()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 68
    .local v0, "b":B
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    .line 69
    and-int/lit8 v1, v0, 0x7f

    int-to-short v1, v1

    iput-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    .line 70
    return-void

    .line 68
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setNumLeadingSamples(S)V
    .registers 2
    .param p1, "numLeadingSamples"    # S

    .prologue
    .line 62
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    .line 63
    return-void
.end method

.method public setNumLeadingSamplesKnown(Z)V
    .registers 2
    .param p1, "numLeadingSamplesKnown"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "VisualRandomAccessEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "{numLeadingSamplesKnown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", numLeadingSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

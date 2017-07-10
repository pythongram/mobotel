.class public final Lorg/telegram/messenger/camera/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    .line 15
    iput p2, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    .line 16
    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSize(Ljava/lang/String;)Lorg/telegram/messenger/camera/Size;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 52
    .local v1, "sep_ix":I
    if-gez v1, :cond_e

    .line 53
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 55
    :cond_e
    if-gez v1, :cond_15

    .line 56
    invoke-static {p0}, Lorg/telegram/messenger/camera/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 59
    :cond_15
    :try_start_15
    new-instance v2, Lorg/telegram/messenger/camera/Size;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_2d} :catch_2e

    return-object v2

    .line 60
    :catch_2e
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lorg/telegram/messenger/camera/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-nez p1, :cond_5

    .line 38
    :cond_4
    :goto_4
    return v2

    .line 31
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 32
    goto :goto_4

    .line 34
    :cond_9
    instance-of v3, p1, Lorg/telegram/messenger/camera/Size;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 35
    check-cast v0, Lorg/telegram/messenger/camera/Size;

    .line 36
    .local v0, "other":Lorg/telegram/messenger/camera/Size;
    iget v3, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v4, v0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v4, v0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v3, v4, :cond_1e

    :goto_1c
    move v2, v1

    goto :goto_4

    :cond_1e
    move v1, v2

    goto :goto_1c
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

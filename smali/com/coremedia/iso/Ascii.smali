.class public final Lcom/coremedia/iso/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)Ljava/lang/String;
    .registers 4
    .param p0, "b"    # [B

    .prologue
    .line 38
    if-eqz p0, :cond_a

    .line 39
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v2, "us-ascii"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_c

    .line 41
    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 43
    :catch_c
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static convert(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    if-eqz p0, :cond_9

    .line 27
    :try_start_2
    const-string v1, "us-ascii"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_7} :catch_b

    move-result-object v1

    .line 29
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31
    :catch_b
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

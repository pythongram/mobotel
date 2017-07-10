.class public Lcom/googlecode/mp4parser/boxes/apple/AppleTempoBox;
.super Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;
.source "AppleTempoBox.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    const-string v0, "tmpo"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

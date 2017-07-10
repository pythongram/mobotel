.class public Lcom/googlecode/mp4parser/boxes/apple/Apple_geIDBox;
.super Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;
.source "Apple_geIDBox.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "geID"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

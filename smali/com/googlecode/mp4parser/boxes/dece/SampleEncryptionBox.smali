.class public Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;
.super Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.source "SampleEncryptionBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "senc"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "senc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

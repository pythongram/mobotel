.class public Lcom/coremedia/iso/boxes/TrackReferenceBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackReferenceBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tref"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "tref"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/CharSequence;

.field public dateTaken:J

.field public imageId:I

.field public imagePath:Ljava/lang/String;

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;IZ)V
    .registers 9
    .param p1, "bucketId"    # I
    .param p2, "imageId"    # I
    .param p3, "dateTaken"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "isVideo"    # Z

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    .line 197
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 198
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 199
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 200
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 201
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 202
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 203
    return-void
.end method

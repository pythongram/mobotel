.class public Lorg/telegram/messenger/MediaController$AlbumEntry;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field public isVideo:Z

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public photosByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .registers 6
    .param p1, "bucketId"    # I
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "coverPhoto"    # Lorg/telegram/messenger/MediaController$PhotoEntry;
    .param p4, "isVideo"    # Z

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Ljava/util/HashMap;

    .line 172
    iput p1, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    .line 173
    iput-object p2, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 175
    iput-boolean p4, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->isVideo:Z

    .line 176
    return-void
.end method


# virtual methods
.method public addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .registers 4
    .param p1, "photoEntry"    # Lorg/telegram/messenger/MediaController$PhotoEntry;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

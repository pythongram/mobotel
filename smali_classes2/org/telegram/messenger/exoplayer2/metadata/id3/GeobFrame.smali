.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "GeobFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "GEOB"


# instance fields
.field public final data:[B

.field public final description:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    const-string v0, "GEOB"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    .line 36
    const-string v0, "GEOB"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_5

    .line 60
    :cond_4
    :goto_4
    return v1

    .line 56
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 57
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 59
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    .line 60
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 61
    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3e
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int v0, v3, v1

    .line 69
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_29
    add-int v0, v1, v2

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 71
    return v0

    :cond_36
    move v1, v2

    .line 67
    goto :goto_d

    :cond_38
    move v1, v2

    .line 68
    goto :goto_1b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 80
    return-void
.end method

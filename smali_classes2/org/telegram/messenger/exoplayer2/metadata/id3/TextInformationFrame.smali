.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "TextInformationFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_5

    .line 48
    :cond_4
    :goto_4
    return v1

    .line 44
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 45
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 47
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    .line 48
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 53
    const/16 v0, 0x11

    .line 54
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 55
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int v0, v2, v1

    .line 56
    return v0

    .line 55
    :cond_19
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method

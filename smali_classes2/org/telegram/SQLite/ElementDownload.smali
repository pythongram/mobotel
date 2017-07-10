.class public Lorg/telegram/SQLite/ElementDownload;
.super Ljava/lang/Object;
.source "ElementDownload.java"


# instance fields
.field public access_hash:Ljava/lang/String;

.field public check:Z

.field public date:Ljava/lang/String;

.field public dc_id:I

.field public duration:I

.field public file_name:Ljava/lang/String;

.field public h:I

.field public id:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public prog:F

.field public real_name:Ljava/lang/String;

.field public size:I

.field public state:Z

.field public type:I

.field public user_id:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->id:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->access_hash:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->date:Ljava/lang/String;

    .line 25
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->duration:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->mime_type:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->file_name:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->real_name:Ljava/lang/String;

    .line 29
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->size:I

    .line 30
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->dc_id:I

    .line 31
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->w:I

    .line 32
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->h:I

    .line 33
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->user_id:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/SQLite/ElementDownload;->type:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/SQLite/ElementDownload;->prog:F

    .line 36
    iput-boolean v1, p0, Lorg/telegram/SQLite/ElementDownload;->state:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/ElementDownload;->check:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIFZ)V
    .registers 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;
    .param p4, "i"    # I
    .param p5, "str4"    # Ljava/lang/String;
    .param p6, "i2"    # I
    .param p7, "i3"    # I
    .param p8, "i4"    # I
    .param p9, "i5"    # I
    .param p10, "i6"    # I
    .param p11, "f"    # F
    .param p12, "z"    # Z

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->id:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->access_hash:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->date:Ljava/lang/String;

    .line 44
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->duration:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->mime_type:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->file_name:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->real_name:Ljava/lang/String;

    .line 48
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->size:I

    .line 49
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->dc_id:I

    .line 50
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->w:I

    .line 51
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->h:I

    .line 52
    iput v1, p0, Lorg/telegram/SQLite/ElementDownload;->user_id:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/SQLite/ElementDownload;->type:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/SQLite/ElementDownload;->prog:F

    .line 55
    iput-boolean v1, p0, Lorg/telegram/SQLite/ElementDownload;->state:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/ElementDownload;->check:Z

    .line 57
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/telegram/SQLite/ElementDownload;->access_hash:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/telegram/SQLite/ElementDownload;->date:Ljava/lang/String;

    .line 60
    iput p4, p0, Lorg/telegram/SQLite/ElementDownload;->duration:I

    .line 61
    iput-object p5, p0, Lorg/telegram/SQLite/ElementDownload;->mime_type:Ljava/lang/String;

    .line 62
    iput p6, p0, Lorg/telegram/SQLite/ElementDownload;->size:I

    .line 63
    iput p7, p0, Lorg/telegram/SQLite/ElementDownload;->dc_id:I

    .line 64
    iput p8, p0, Lorg/telegram/SQLite/ElementDownload;->w:I

    .line 65
    iput p9, p0, Lorg/telegram/SQLite/ElementDownload;->h:I

    .line 66
    iput p10, p0, Lorg/telegram/SQLite/ElementDownload;->user_id:I

    .line 67
    iput p11, p0, Lorg/telegram/SQLite/ElementDownload;->prog:F

    .line 68
    iput-boolean p12, p0, Lorg/telegram/SQLite/ElementDownload;->check:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getAccess_hash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->access_hash:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDc_id()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->dc_id:I

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->duration:I

    return v0
.end method

.method public getFile_name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->h:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMime_type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->mime_type:Ljava/lang/String;

    return-object v0
.end method

.method public getProg()F
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->prog:F

    return v0
.end method

.method public getReal_name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/SQLite/ElementDownload;->real_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->size:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->type:I

    return v0
.end method

.method public getUser_id()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->user_id:I

    return v0
.end method

.method public getW()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lorg/telegram/SQLite/ElementDownload;->w:I

    return v0
.end method

.method public isCheck()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/telegram/SQLite/ElementDownload;->check:Z

    return v0
.end method

.method public isState()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/telegram/SQLite/ElementDownload;->state:Z

    return v0
.end method

.method public setAccess_hash(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->access_hash:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setCheck(Z)V
    .registers 2
    .param p1, "z"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lorg/telegram/SQLite/ElementDownload;->check:Z

    .line 141
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->date:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDc_id(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->dc_id:I

    .line 149
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 152
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->duration:I

    .line 153
    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->file_name:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setH(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 160
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->h:I

    .line 161
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->id:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setMime_type(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->mime_type:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setProg(F)V
    .registers 2
    .param p1, "f"    # F

    .prologue
    .line 172
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->prog:F

    .line 173
    return-void
.end method

.method public setReal_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/telegram/SQLite/ElementDownload;->real_name:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 180
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->size:I

    .line 181
    return-void
.end method

.method public setState(Z)V
    .registers 2
    .param p1, "z"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lorg/telegram/SQLite/ElementDownload;->state:Z

    .line 185
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 188
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->type:I

    .line 189
    return-void
.end method

.method public setUser_id(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 192
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->user_id:I

    .line 193
    return-void
.end method

.method public setW(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/telegram/SQLite/ElementDownload;->w:I

    .line 197
    return-void
.end method

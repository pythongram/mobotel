.class public Lorg/telegram/ui/Telehgram/UpdateModel;
.super Ljava/lang/Object;
.source "UpdateModel.java"


# instance fields
.field private changeDate:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isNew:Z

.field private newValue:Ljava/lang/String;

.field private oldValue:Ljava/lang/String;

.field private type:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 8
    .param p1, "var1"    # Ljava/lang/Long;
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;
    .param p5, "var5"    # I
    .param p6, "var6"    # Z
    .param p7, "var7"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->id:Ljava/lang/Long;

    .line 19
    iput p2, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    .line 20
    iput-object p3, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->oldValue:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->newValue:Ljava/lang/String;

    .line 22
    iput p5, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->userId:I

    .line 23
    iput-boolean p6, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->isNew:Z

    .line 24
    iput-object p7, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->changeDate:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getChangeDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->changeDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()I
    .registers 4

    .prologue
    .line 37
    iget v1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 38
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->newValue:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 39
    const v0, 0x7f07087a

    .line 53
    .local v0, "var1":I
    :goto_12
    return v0

    .line 41
    .end local v0    # "var1":I
    :cond_13
    const v0, 0x7f070879

    .restart local v0    # "var1":I
    goto :goto_12

    .line 43
    .end local v0    # "var1":I
    :cond_17
    iget v1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 44
    const v0, 0x7f070850

    .restart local v0    # "var1":I
    goto :goto_12

    .line 45
    .end local v0    # "var1":I
    :cond_20
    iget v1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    .line 46
    const v0, 0x7f070852

    .restart local v0    # "var1":I
    goto :goto_12

    .line 47
    .end local v0    # "var1":I
    :cond_29
    iget v1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_32

    .line 48
    const v0, 0x7f070851

    .restart local v0    # "var1":I
    goto :goto_12

    .line 50
    .end local v0    # "var1":I
    :cond_32
    const v0, 0x7f07084f

    .restart local v0    # "var1":I
    goto :goto_12
.end method

.method public getNewValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->oldValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->userId:I

    return v0
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->isNew:Z

    return v0
.end method

.method public setChangeDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->changeDate:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->id:Ljava/lang/Long;

    .line 82
    return-void
.end method

.method public setNew(Z)V
    .registers 2
    .param p1, "var1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->isNew:Z

    .line 86
    return-void
.end method

.method public setNewValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->newValue:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOldValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->oldValue:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "var1"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->type:I

    .line 98
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "var1"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/Telehgram/UpdateModel;->userId:I

    .line 102
    return-void
.end method

.class public Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;
.super Ljava/lang/Object;
.source "ContentInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrandEntry"
.end annotation


# instance fields
.field iso_brand:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "iso_brand"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p0, p1, :cond_5

    .line 133
    :cond_4
    :goto_4
    return v1

    .line 126
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;

    .line 130
    .local v0, "that":Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 131
    :cond_2a
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    goto :goto_4

    :cond_3a
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->iso_brand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 139
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/dece/ContentInformationBox$BrandEntry;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 140
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 138
    goto :goto_b
.end method

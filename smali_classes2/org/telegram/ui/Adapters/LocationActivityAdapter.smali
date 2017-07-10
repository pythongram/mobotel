.class public Lorg/telegram/ui/Adapters/LocationActivityAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "LocationActivityAdapter.java"


# instance fields
.field private customLocation:Landroid/location/Location;

.field private gpsLocation:Landroid/location/Location;

.field private mContext:Landroid/content/Context;

.field private overScrollHeight:I

.field private sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private updateCell()V
    .registers 11

    .prologue
    const v2, 0x7f0704db

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    if-eqz v0, :cond_3e

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_3f

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string v1, "SendSelectedLocation"

    const v2, 0x7f0704df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%f,%f)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_3e
    :goto_3e
    return-void

    .line 62
    :cond_3f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_69

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string v1, "SendLocation"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccurateTo"

    const v3, 0x7f070035

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "Meters"

    iget-object v6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 65
    :cond_69
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string v1, "SendLocation"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading"

    const v3, 0x7f0702eb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 129
    const/4 v0, 0x2

    if-le p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_18

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 132
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 74
    :cond_10
    const/4 v0, 0x4

    .line 76
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_23
    add-int/2addr v0, v1

    goto :goto_11

    :cond_25
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 137
    if-nez p1, :cond_6

    .line 138
    const/4 v0, 0x0

    .line 148
    :cond_5
    :goto_5
    return v0

    .line 139
    :cond_6
    if-eq p1, v0, :cond_5

    .line 141
    if-ne p1, v1, :cond_c

    move v0, v1

    .line 142
    goto :goto_5

    .line 143
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 144
    :cond_1c
    const/4 v0, 0x4

    goto :goto_5

    .line 145
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ne p1, v0, :cond_2a

    .line 146
    const/4 v0, 0x5

    goto :goto_5

    .line 148
    :cond_2a
    const/4 v0, 0x3

    goto :goto_5
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 153
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 154
    .local v0, "position":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 126
    :goto_7
    return-void

    .line 110
    :pswitch_8
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/EmptyCell;

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_7

    .line 113
    :pswitch_12
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SendLocationCell;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    goto :goto_7

    .line 117
    :pswitch_1c
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string v1, "NearbyPlaces"

    const v2, 0x7f07033a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 120
    :pswitch_2d
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->iconUrls:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;Z)V

    goto :goto_7

    .line 123
    :pswitch_4a
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LocationLoadingCell;->setLoading(Z)V

    goto :goto_7

    .line 108
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_2d
        :pswitch_4a
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_38

    .line 100
    new-instance v0, Lorg/telegram/ui/Cells/LocationPoweredCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LocationPoweredCell;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 84
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 87
    .end local v0    # "view":Landroid/view/View;
    :pswitch_18
    new-instance v0, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;)V

    .line 88
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 90
    .end local v0    # "view":Landroid/view/View;
    :pswitch_20
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 93
    .end local v0    # "view":Landroid/view/View;
    :pswitch_28
    new-instance v0, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 96
    .end local v0    # "view":Landroid/view/View;
    :pswitch_30
    new-instance v0, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LocationLoadingCell;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 82
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_28
        :pswitch_30
    .end packed-switch
.end method

.method public setCustomLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 55
    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 50
    return-void
.end method

.method public setOverScrollHeight(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 44
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    .line 45
    return-void
.end method

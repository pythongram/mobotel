.class public Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UpdateCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/UpdateCursorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dataBaseAccess:Lorg/telegram/ui/Telehgram/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 23
    new-instance v0, Lorg/telegram/ui/Telehgram/a;

    invoke-direct {v0}, Lorg/telegram/ui/Telehgram/a;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    .line 24
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 27
    check-cast p1, Lorg/telegram/ui/Telehgram/UpdateCell;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Telehgram/a;->a(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/UpdateModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->setData(Lorg/telegram/ui/Telehgram/UpdateModel;)V

    .line 28
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    new-instance v0, Lorg/telegram/ui/Telehgram/UpdateCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/UpdateCell;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

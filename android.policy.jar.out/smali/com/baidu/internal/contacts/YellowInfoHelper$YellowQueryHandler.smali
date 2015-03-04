.class Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "YellowInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YellowQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 102
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 107
    move-object v3, p2

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    #calls: Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    invoke-static {v3, p3}, Lcom/baidu/internal/contacts/YellowInfoHelper;->access$000(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    .line 109
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    const-string v3, "YellowInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",YellowInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    instance-of v3, p2, Ljava/util/Map;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 111
    check-cast v1, Ljava/util/HashMap;

    .line 112
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    iget v3, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 114
    const-string v3, "YellowInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache non_yellow info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    #getter for: Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/baidu/internal/contacts/YellowInfoHelper;->access$100(Lcom/baidu/internal/contacts/YellowInfoHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    const-string v4, "YellowInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCompleteListener is null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "listener"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v3, "listener"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;

    invoke-interface {v3, v0}, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;->onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V

    .line 121
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 118
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

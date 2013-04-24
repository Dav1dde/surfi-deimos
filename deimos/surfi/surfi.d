
extern(C) {
    struct SurfiClient {
        GtkWidget* window; // Offscreen window
        GtkWidget* view; // The webkit widget
        GtkWidget* scroll;

        void* userptr; // custom user pointer passed to all callbacks
    }

    bool surfi_init();
    bool surfi_poll();
    SurfiClient* surfi_client_new(int width, int height, bool scroll);
    void surfi_client_free(SurfiClient* client);
    void surfi_client_set_size(SurfiClient* client, int width, int height);
    void surfi_client_set_userptr(SurfiClient* client, void* ptr);
    void* surfi_client_get_userptr(SurfiClient* client);
    Pixbuf* surfi_client_get_pixbuf(SurfiClient* client);
    bool surfi_client_can_copy_clipboard(SurfiClient* client);
    bool surfi_client_can_cut_clipboard(SurfiClient* client);
    bool surfi_client_can_go_back(SurfiClient* client);
    bool surfi_client_can_go_back_or_forward(SurfiClient* client, int steps);
    bool surfi_client_can_go_forward(SurfiClient* client);
    bool surfi_client_can_paste_clipboard(SurfiClient* client);
    bool surfi_client_can_redo(SurfiClient* client);
    bool surfi_client_can_show_mime_type(SurfiClient* client, const(char)* mime_type);
    bool surfi_client_can_undo(SurfiClient* client);
    void surfi_client_copy_clipboard(SurfiClient* client);
    void surfi_client_cut_clipboard(SurfiClient* client);
    void surfi_client_delete_selection(SurfiClient* client);
    void surfi_client_execute_script(SurfiClient* client, const(char)* script);
    WebKitWebBackForwardList* surfi_client_get_back_forward_list(SurfiClient* client);
    GtkTargetList* surfi_client_get_copy_target_list(SurfiClient* client);
    const(char)* surfi_client_get_custom_encoding(SurfiClient* client);
    WebKitDOMDocument* surfi_client_get_dom_document(SurfiClient* client);
    bool surfi_client_get_editable(SurfiClient* client);
    const(char)* surfi_client_get_encoding(SurfiClient* client);
    WebKitWebFrame* surfi_client_get_focused_frame(SurfiClient* client);
    bool surfi_client_get_full_content_zoom(SurfiClient* client);
    WebKitHitTestResult* surfi_client_get_hit_test_result(SurfiClient* client, GdkEventButton* event);
    Pixbuf* surfi_client_get_icon_pixbuf(SurfiClient* client);
    const(char)* surfi_client_get_icon_uri(SurfiClient* client);
    WebKitWebInspector* surfi_client_get_inspector(SurfiClient* client);
    WebKitLoadStatus surfi_client_get_load_status(SurfiClient* client);
    WebKitWebFrame* surfi_client_get_main_frame(SurfiClient* client);
    GtkTargetList* surfi_client_get_paste_target_list(SurfiClient* client);
    double surfi_client_get_progress(SurfiClient* client);
    WebKitWebSettings* surfi_client_get_settings(SurfiClient* client);
    const(char)* surfi_client_get_title(SurfiClient* client);
    bool surfi_client_get_transparent(SurfiClient* client);
    const(char)* surfi_client_get_uri(SurfiClient* client);
    WebKitWebViewViewMode surfi_client_get_view_mode(SurfiClient* client);
    bool surfi_client_get_view_source_mode(SurfiClient* client);
    WebKitViewportAttributes* surfi_get_viewport_attributes(SurfiClient* client);
    float surfi_get_zoom_level(SurfiClient* client);
    void surfi_client_go_back(SurfiClient* client);
    void surfi_client_go_back_or_forward(SurfiClient* client, int steps);
    void surfi_client_go_forward(SurfiClient* client);
    bool surfi_client_go_to_back_forward_item(SurfiClient* client, WebKitWebHistoryItem* item);
    bool surfi_client_has_selection(SurfiClient* client);
    void surfi_client_load_html_string(SurfiClient* client, const(char)* content, const(char)* base_uri);
    void surfi_client_load_request(SurfiClient* client, WebKitNetworkRequest* request);
    void surfi_client_load_string(SurfiClient* client, const(char)* content, const(char)* mime_type,
                                const(char)* encoding, const(char)* base_uri);
    void surfi_client_load_uri(SurfiClient* client, const(char)* uri);
    unsigned int surfi_client_mark_text_matches(SurfiClient* client, const(char)* string, bool case_sensitive, unsigned int limit);
    void surfi_client_move_cursor(SurfiClient* client, GtkMovementStep step, int count);
    void surfi_client_paste_clipboard(SurfiClient* client);
    void surfi_client_redo(SurfiClient* client);
    void surfi_client_reload(SurfiClient* client);
    void surfi_client_reload_bypass_cache(SurfiClient* client);
    bool surfi_client_search_text(SurfiClient* client, const(char)* text, bool case_sensitive, bool forward, bool wrap);
    void surfi_client_select_all(SurfiClient* client);
    void surfi_client_set_custom_encoding(SurfiClient* client, const(char)* encoding);
    void surfi_client_set_editable(SurfiClient* client, bool flag);
    void surfi_client_set_full_content_zoom(SurfiClient* client, bool full_content_zoom);
    void surfi_client_set_highlight_text_matches(SurfiClient* client, bool highlight);
    void surfi_client_set_maintains_back_forward_list(SurfiClient* client, bool flag);
    void surfi_client_set_settings(SurfiClient* client, WebKitWebSettings* settings);
    void surfi_client_set_transparent(SurfiClient* client, bool flag);
    void surfi_client_set_view_mode(SurfiClient* client, WebKitWebViewViewMode mode);
    void surfi_client_set_view_source_mode(SurfiClient* client, bool view_source_mode);
    void surfi_client_set_zoom_level(SurfiClient* client, float zoom_level);
    void surfi_client_stop_loading(SurfiClient* client);
    Pixbuf* surfi_client_try_get_favicon_pixbuf(SurfiClient* client, int width, int height);
    void surfi_client_undo(SurfiClient* client);
    void surfi_client_unmark_text_matches(SurfiClient* client);
    void surfi_client_zoom_in(SurfiClient* client);
    void surfi_client_zoom_out(SurfiClient* client);
    WebKitWebWindowFeatures* surfi_client_get_window_features(SurfiClient* client);
    void* surfi_client_get_snapshot(SurfiClient* client); // TODO void* = cairo_surface_t*
}